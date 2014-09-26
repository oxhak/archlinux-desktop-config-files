# oxhak tytter output extension
# https://github.com/oxhak/ttytter-extension
# https://plus.google.com/101484008937520775428/posts?hl=fr
# https://twitter.com/OxHaK

$handle = sub {
    my $ref = shift; # this is a hashref to the tweet structure
    my $sn = &descape($ref->{'user'}->{'name'});
    my $txt = &descape($ref->{'text'}) ;
    (my $txtfinal = $txt) =~ s/\n//g;
    my $wrap_at = 27; #this is the wrapping lines lenght, replace 27 by what you want (if you see somes blank lines, play with the font size in your .Xdefaults)
    (my $wrapped = $txtfinal) =~ s/(.{0,$wrap_at}(?:\s|$))/$1\n/g;
    (my $wrappedfinal = $wrapped) =~ s/\n\n//g;
    my $menu_select = $ref->{'menu_select'};

    my $string = 
            "\e[47m\e[30m". #this is the text layout, for customize color and more see http://misc.flogisoft.com/bash/tip_colors_and_formatting
            ${menu_select} . ''.
            "\e[44m\e[39m\033[1m ".
            ${sn} . ''.
            "\033[m\e[49m\n".
            ${wrappedfinal} . ''.
            "\n \n";

    print $streamout $string;
    return 1; # one logical tweet accepted
};